; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_CreateSchemaDDLCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_CreateSchemaDDLCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"public\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@CREATE_SCHEMA_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CreateSchemaDDLCommand(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i8* @get_namespace_name(i32 %8)
  store i8* %9, i8** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @NAMEDATALEN, align 4
  %12 = call i64 @strncmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %30

15:                                               ; preds = %1
  %16 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @quote_identifier(i8* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i8* @SchemaOwnerName(i32 %19)
  %21 = call i8* @quote_identifier(i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i32, i32* @CREATE_SCHEMA_COMMAND, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @appendStringInfo(%struct.TYPE_4__* %22, i32 %23, i8* %24, i8* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i8* @SchemaOwnerName(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
