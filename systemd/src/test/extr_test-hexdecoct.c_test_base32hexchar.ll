; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_base32hexchar.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_base32hexchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_base32hexchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_base32hexchar() #0 {
  %1 = call signext i8 @base32hexchar(i32 0)
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 48
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert_se(i32 %4)
  %6 = call signext i8 @base32hexchar(i32 9)
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 57
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = call signext i8 @base32hexchar(i32 10)
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 65
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = call signext i8 @base32hexchar(i32 31)
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 86
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local signext i8 @base32hexchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
