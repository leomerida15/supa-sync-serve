  import pgDiffSync from 'pg-diff-sync'
  const currentDbStructure = {...} 
  const expectedDbStructure = {...} 

  const statements = pgDiffSync(
    currentDbStructure,
    expectedDbStructure
  )  