; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_TouchFile_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_TouchFile_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Usage: touchFile <file>\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FS_TouchFile_f() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @Cmd_Argc()
  %3 = icmp ne i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %15

6:                                                ; preds = %0
  %7 = call i32 @Cmd_Argv(i32 1)
  %8 = load i32, i32* @qfalse, align 4
  %9 = call i32 @FS_FOpenFileRead(i32 %7, i64* %1, i32 %8)
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @FS_FCloseFile(i64 %13)
  br label %15

15:                                               ; preds = %4, %12, %6
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @FS_FOpenFileRead(i32, i64*, i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @FS_FCloseFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
