; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_set_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_set_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WD33C93_hostdata = type { i32* }

@SS_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.WD33C93_hostdata*, i32)* @set_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_resync(%struct.WD33C93_hostdata* %0, i32 %1) #0 {
  %3 = alloca %struct.WD33C93_hostdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.WD33C93_hostdata* %0, %struct.WD33C93_hostdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i32, i32* @SS_UNSET, align 4
  %17 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %18 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  br label %23

23:                                               ; preds = %15, %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
