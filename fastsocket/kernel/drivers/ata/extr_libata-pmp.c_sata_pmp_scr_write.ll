; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_scr_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_scr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32 }

@SATA_PMP_PSCR_CONTROL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to write SCR %d (Emask=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_pmp_scr_write(%struct.ata_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SATA_PMP_PSCR_CONTROL, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @sata_pmp_write(%struct.ata_link* %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %24 = load i32, i32* @KERN_WARNING, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ata_link_printk(%struct.ata_link* %23, i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %22, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @sata_pmp_write(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @ata_link_printk(%struct.ata_link*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
