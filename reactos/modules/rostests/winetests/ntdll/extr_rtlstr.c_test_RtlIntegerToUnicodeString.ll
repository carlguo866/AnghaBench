; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlIntegerToUnicodeString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlIntegerToUnicodeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NB_INT2STR = common dso_local global i64 0, align 8
@int2str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlIntegerToUnicodeString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlIntegerToUnicodeString() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @NB_INT2STR, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i64, i64* %1, align 8
  %8 = load i32*, i32** @int2str, align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = call i32 @one_RtlIntegerToUnicodeString_test(i64 %7, i32* %10)
  br label %12

12:                                               ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %1, align 8
  br label %2

15:                                               ; preds = %2
  ret void
}

declare dso_local i32 @one_RtlIntegerToUnicodeString_test(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
