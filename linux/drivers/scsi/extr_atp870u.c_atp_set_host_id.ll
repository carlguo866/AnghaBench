; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp_set_host_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp_set_host_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atp_unit*, i32, i32)* @atp_set_host_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp_set_host_id(%struct.atp_unit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.atp_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atp_unit* %0, %struct.atp_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = or i32 %9, 8
  %11 = call i32 @atp_writeb_io(%struct.atp_unit* %7, i32 %8, i32 0, i32 %10)
  %12 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @atp_writeb_io(%struct.atp_unit* %12, i32 %13, i32 24, i32 0)
  br label %15

15:                                               ; preds = %21, %3
  %16 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @atp_readb_io(%struct.atp_unit* %16, i32 %17, i32 31)
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @mdelay(i32 1)
  br label %15

23:                                               ; preds = %15
  %24 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @atp_readb_io(%struct.atp_unit* %24, i32 %25, i32 23)
  %27 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @atp_writeb_io(%struct.atp_unit* %27, i32 %28, i32 1, i32 8)
  %30 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @atp_writeb_io(%struct.atp_unit* %30, i32 %31, i32 2, i32 127)
  %33 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @atp_writeb_io(%struct.atp_unit* %33, i32 %34, i32 17, i32 32)
  ret void
}

declare dso_local i32 @atp_writeb_io(%struct.atp_unit*, i32, i32, i32) #1

declare dso_local i32 @atp_readb_io(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
