; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ali.c_ali_check_atapi_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ali.c_ali_check_atapi_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32* }

@ali_atapi_dma = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATAPI_MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ali_check_atapi_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali_check_atapi_dma(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %4 = load i32, i32* @ali_atapi_dma, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EOPNOTSUPP, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @atapi_cmd_type(i32 %14)
  %16 = load i64, i64* @ATAPI_MISC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %18, %6
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @atapi_cmd_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
