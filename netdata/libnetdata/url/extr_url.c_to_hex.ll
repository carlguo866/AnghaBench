; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_to_hex.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_to_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@to_hex.hex = internal global [17 x i8] c"0123456789abcdef\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @to_hex(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = and i32 %4, 15
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [17 x i8], [17 x i8]* @to_hex.hex, i64 0, i64 %6
  %8 = load i8, i8* %7, align 1
  ret i8 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
