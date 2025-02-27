; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_p224.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_p224.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEXT = common dso_local global i32 0, align 4
@LAST = common dso_local global i32 0, align 4
@ret = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ecp_mod_p224 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p224(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @INIT(i32 224)
  %4 = call i32 @SUB(i32 7)
  %5 = call i32 @SUB(i32 11)
  %6 = load i32, i32* @NEXT, align 4
  %7 = call i32 @SUB(i32 8)
  %8 = call i32 @SUB(i32 12)
  %9 = load i32, i32* @NEXT, align 4
  %10 = call i32 @SUB(i32 9)
  %11 = call i32 @SUB(i32 13)
  %12 = load i32, i32* @NEXT, align 4
  %13 = call i32 @SUB(i32 10)
  %14 = call i32 @ADD(i32 7)
  %15 = call i32 @ADD(i32 11)
  %16 = load i32, i32* @NEXT, align 4
  %17 = call i32 @SUB(i32 11)
  %18 = call i32 @ADD(i32 8)
  %19 = call i32 @ADD(i32 12)
  %20 = load i32, i32* @NEXT, align 4
  %21 = call i32 @SUB(i32 12)
  %22 = call i32 @ADD(i32 9)
  %23 = call i32 @ADD(i32 13)
  %24 = load i32, i32* @NEXT, align 4
  %25 = call i32 @SUB(i32 13)
  %26 = call i32 @ADD(i32 10)
  %27 = load i32, i32* @LAST, align 4
  br label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ret, align 4
  ret i32 %29
}

declare dso_local i32 @INIT(i32) #1

declare dso_local i32 @SUB(i32) #1

declare dso_local i32 @ADD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
