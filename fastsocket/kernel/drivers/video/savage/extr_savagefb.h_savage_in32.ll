; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb.h_savage_in32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb.h_savage_in32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.savagefb_par*)* @savage_in32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @savage_in32(i64 %0, %struct.savagefb_par* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.savagefb_par*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.savagefb_par* %1, %struct.savagefb_par** %4, align 8
  %5 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %6 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @readl(i64 %10)
  ret i64 %11
}

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
