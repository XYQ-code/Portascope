ThisBuild / scalaVersion := "2.12.18"
ThisBuild / version := "1.0.0"

val spinalVersion = "1.12.0"

resolvers += "jitpack" at "https://jitpack.io"

lazy val root = (project in file("."))
  .settings(
    name := "VexRiscv-ADC",
    libraryDependencies ++= Seq(
      "com.github.spinalhdl" %% "spinalhdl-core" % spinalVersion,
      "com.github.spinalhdl" %% "spinalhdl-lib" % spinalVersion,
      compilerPlugin("com.github.spinalhdl" %% "spinalhdl-idsl-plugin" % spinalVersion),
      "org.scalatest" %% "scalatest" % "3.2.17",
      "org.yaml" % "snakeyaml" % "1.8",
      "com.github.SpinalHDL" % "VexRiscv" % "7b6ca65",
      "org.scala-lang.modules" %% "scala-xml" % "2.1.0"
    ),
    fork := true
  )

libraryDependencySchemes += "org.scala-lang.modules" %% "scala-xml" % "early-semver"