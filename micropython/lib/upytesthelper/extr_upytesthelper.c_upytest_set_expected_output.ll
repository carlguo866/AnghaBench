; ModuleID = '/home/carl/AnghaBench/micropython/lib/upytesthelper/extr_upytesthelper.c_upytest_set_expected_output.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/upytesthelper/extr_upytesthelper.c_upytest_set_expected_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_exp_output = common dso_local global i8* null, align 8
@test_rem_output_len = common dso_local global i32 0, align 4
@test_exp_output_len = common dso_local global i32 0, align 4
@test_failed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upytest_set_expected_output(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** @test_exp_output, align 8
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* @test_rem_output_len, align 4
  store i32 %6, i32* @test_exp_output_len, align 4
  store i32 0, i32* @test_failed, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
