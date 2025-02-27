; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bitfield.c_test_constants.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bitfield.c_test_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_constants() #0 {
  %1 = call i32 @CHECK_ENC_GET(i32 16, i32 1, i32 15, i32 1)
  %2 = call i32 @CHECK_ENC_GET(i32 16, i32 3, i32 240, i32 48)
  %3 = call i32 @CHECK_ENC_GET(i32 16, i32 5, i32 3840, i32 1280)
  %4 = call i32 @CHECK_ENC_GET(i32 16, i32 7, i32 61440, i32 28672)
  %5 = call i32 @CHECK_ENC_GET(i32 16, i32 14, i32 15, i32 14)
  %6 = call i32 @CHECK_ENC_GET(i32 16, i32 15, i32 240, i32 240)
  %7 = call i32 @CHECK_ENC_GET_U(i32 8, i32 1, i32 15, i32 1)
  %8 = call i32 @CHECK_ENC_GET_U(i32 8, i32 3, i32 240, i32 48)
  %9 = call i32 @CHECK_ENC_GET_U(i32 8, i32 14, i32 15, i32 14)
  %10 = call i32 @CHECK_ENC_GET_U(i32 8, i32 15, i32 240, i32 240)
  %11 = call i32 @CHECK_ENC_GET(i32 32, i32 1, i32 3840, i32 256)
  %12 = call i32 @CHECK_ENC_GET(i32 32, i32 3, i32 61440, i32 12288)
  %13 = call i32 @CHECK_ENC_GET(i32 32, i32 5, i32 983040, i32 327680)
  %14 = call i32 @CHECK_ENC_GET(i32 32, i32 7, i32 15728640, i32 7340032)
  %15 = call i32 @CHECK_ENC_GET(i32 32, i32 14, i32 251658240, i32 234881024)
  %16 = call i32 @CHECK_ENC_GET(i32 32, i32 15, i32 -268435456, i32 -268435456)
  %17 = call i32 @CHECK_ENC_GET(i32 64, i32 1, i32 0, i32 0)
  %18 = call i32 @CHECK_ENC_GET(i32 64, i32 3, i32 0, i32 0)
  %19 = call i32 @CHECK_ENC_GET(i32 64, i32 5, i32 0, i32 0)
  %20 = call i32 @CHECK_ENC_GET(i32 64, i32 7, i32 0, i32 0)
  %21 = call i32 @CHECK_ENC_GET(i32 64, i32 14, i32 0, i32 0)
  %22 = call i32 @CHECK_ENC_GET(i32 64, i32 15, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @CHECK_ENC_GET(i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_ENC_GET_U(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
