; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_argv.c_argv_printf__combined_path_with_spaces__argc_correct.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_argv.c_argv_printf__combined_path_with_spaces__argc_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s%sc\00", align 1
@PATH1 = common dso_local global i32 0, align 4
@PATH2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%sc %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"foo %s%sc %s x y\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @argv_printf__combined_path_with_spaces__argc_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argv_printf__combined_path_with_spaces__argc_correct(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.argv, align 4
  store i8** %0, i8*** %2, align 8
  %4 = call i32 (...) @argv_new()
  %5 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @PATH1, align 4
  %7 = load i32, i32* @PATH2, align 4
  %8 = call i32 (%struct.argv*, i8*, i32, i32, ...) @argv_printf(%struct.argv* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @assert_int_equal(i32 %10, i32 1)
  %12 = load i32, i32* @PATH1, align 4
  %13 = load i32, i32* @PATH2, align 4
  %14 = call i32 (%struct.argv*, i8*, i32, i32, ...) @argv_printf(%struct.argv* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13, i32 42)
  %15 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @assert_int_equal(i32 %16, i32 2)
  %18 = load i32, i32* @PATH2, align 4
  %19 = load i32, i32* @PATH1, align 4
  %20 = call i32 (%struct.argv*, i8*, i32, i32, ...) @argv_printf(%struct.argv* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @assert_int_equal(i32 %22, i32 5)
  %24 = call i32 @argv_reset(%struct.argv* %3)
  ret void
}

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @argv_printf(%struct.argv*, i8*, i32, i32, ...) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
