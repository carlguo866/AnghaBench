; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_split.c_cmd_splith.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_split.c_cmd_splith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"splitv\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@L_HORIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_splith(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %9 = call %struct.cmd_results* @checkarg(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i32 0)
  store %struct.cmd_results* %9, %struct.cmd_results** %6, align 8
  %10 = icmp ne %struct.cmd_results* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %12, %struct.cmd_results** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @L_HORIZ, align 4
  %15 = call %struct.cmd_results* @do_split(i32 %14)
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %16

16:                                               ; preds = %13, %11
  %17 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %17
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @do_split(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
