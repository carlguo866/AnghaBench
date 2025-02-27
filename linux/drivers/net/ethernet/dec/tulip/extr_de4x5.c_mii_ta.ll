; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_mii_ta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_mii_ta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MII_STWR = common dso_local global i64 0, align 8
@MII_MWR = common dso_local global i32 0, align 4
@MII_WR = common dso_local global i32 0, align 4
@MII_MRD = common dso_local global i32 0, align 4
@MII_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @mii_ta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_ta(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @MII_STWR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i32, i32* @MII_MWR, align 4
  %10 = load i32, i32* @MII_WR, align 4
  %11 = or i32 %9, %10
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @sendto_mii(i32 %11, i32 1, i64 %12)
  %14 = load i32, i32* @MII_MWR, align 4
  %15 = load i32, i32* @MII_WR, align 4
  %16 = or i32 %14, %15
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @sendto_mii(i32 %16, i32 0, i64 %17)
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @MII_MRD, align 4
  %21 = load i32, i32* @MII_RD, align 4
  %22 = or i32 %20, %21
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @getfrom_mii(i32 %22, i64 %23)
  br label %25

25:                                               ; preds = %19, %8
  ret void
}

declare dso_local i32 @sendto_mii(i32, i32, i64) #1

declare dso_local i32 @getfrom_mii(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
