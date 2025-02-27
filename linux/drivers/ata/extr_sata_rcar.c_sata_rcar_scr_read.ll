; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_scr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_rcar.c_sata_rcar_scr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SCR_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32, i32*)* @sata_rcar_scr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_rcar_scr_read(%struct.ata_link* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SCR_ACTIVE, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %16 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 2
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @ioread32(i64 %24)
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
