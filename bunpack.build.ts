import Bun from 'bun';
import fs from 'node:fs';

const timetaken = 'complete build';

// Starts the timer, the label value is timetaken
console.time(timetaken);

// Build the CLI library bundle with optimizations
Bun.build({
	entrypoints: ['./src/index.ts'],
	outdir: './dist',
	format: 'esm',
	minify: true, // Enable minification for smaller bundle size
	sourcemap: 'external', // External sourcemaps for better debugging without bloating the bundle
	target: 'node',
	// Optimizations for CLI library
	splitting: false,
	// External dependencies for CLI library - keep these as external to reduce bundle size

	// Define environment for production
	define: {
		'process.env.NODE_ENV': '"production"',
	},
	// Naming pattern for output files
	naming: {
		entry: '[name].js',
		chunk: '[name]-[hash].js',
		asset: '[name]-[hash]',
	},
})
	.then(() => {
		console.log('✅ CLI library bundle built successfully');
		console.log('📦 Bundle optimized for CLI library');

		// Add shebang to the generated file if not present
		const outputFile = './dist/index.js';
		if (fs.existsSync(outputFile)) {
			let content = fs.readFileSync(outputFile, 'utf8');
			if (!content.startsWith('#!/usr/bin/env node')) {
				content = '#!/usr/bin/env node\n' + content;
				fs.writeFileSync(outputFile, content);
				console.log('🔧 Added shebang to CLI executable');
			}

			// Make the file executable
			fs.chmodSync(outputFile, 0o755);
			console.log('🔧 Set executable permissions on CLI file');

			// Get file size for reporting
			const stats = fs.statSync(outputFile);
			const fileSizeKB = (stats.size / 1024).toFixed(2);
			console.log(`📊 Bundle size: ${fileSizeKB} KB`);
		}

		// Clean TypeScript build cache to ensure fresh generation
		const buildInfoPath = './node_modules/.tmp/tsconfig.build.tsbuildinfo';
		try {
			fs.unlinkSync(buildInfoPath);
			console.log('🧹 TypeScript build cache cleaned');
		} catch (error) {
			// Cache file doesn't exist, which is fine
		}

		// Generate TypeScript declarations using the specific config
		return Bun.spawn(['bun', 'x', 'tsc', '--project', 'tsconfig.build.json']);
	})
	.then((result) => {
		// Check if the process completed successfully
		if (result.exitCode === 0 || result.exitCode === null) {
			console.log('✅ TypeScript declarations generated');
		} else {
			console.error('❌ TypeScript declarations generation failed');
			console.error('Exit code:', result.exitCode);
		}
	})
	.catch((err) => {
		console.error('❌ Build failed:', err);
		process.exit(1);
	})
	.finally(() => {
		console.timeEnd(timetaken);
	});
