; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_cvt_16.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_cvt_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.VALUETYPE = type { i32 }
%struct.r_magic = type { i32 }

@h = common dso_local global i32 0, align 4
@ut16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.VALUETYPE*, %struct.r_magic*)* @cvt_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvt_16(%union.VALUETYPE* %0, %struct.r_magic* %1) #0 {
  %3 = alloca %union.VALUETYPE*, align 8
  %4 = alloca %struct.r_magic*, align 8
  store %union.VALUETYPE* %0, %union.VALUETYPE** %3, align 8
  store %struct.r_magic* %1, %struct.r_magic** %4, align 8
  %5 = load i32, i32* @h, align 4
  %6 = load i32, i32* @ut16, align 4
  %7 = call i32 @DO_CVT(i32 %5, i32 %6)
  ret void
}

declare dso_local i32 @DO_CVT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
