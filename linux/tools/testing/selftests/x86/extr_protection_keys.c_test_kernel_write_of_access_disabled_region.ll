; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_test_kernel_write_of_access_disabled_region.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_test_kernel_write_of_access_disabled_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"disabling access to PKEY[%02d], having kernel read() to buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"read ret: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kernel_write_of_access_disabled_region(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @get_test_read_fd()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dprintf1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pkey_access_deny(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @read(i32 %12, i32* %13, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dprintf1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @pkey_assert(i32 %17)
  ret void
}

declare dso_local i32 @get_test_read_fd(...) #1

declare dso_local i32 @dprintf1(i8*, i32) #1

declare dso_local i32 @pkey_access_deny(i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @pkey_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
