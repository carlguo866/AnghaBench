; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_av7110_diseqc_send_master_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_av7110_diseqc_send_master_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.av7110* }
%struct.av7110 = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @av7110_diseqc_send_master_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av7110_diseqc_send_master_cmd(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %5 = alloca %struct.av7110*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.av7110*, %struct.av7110** %9, align 8
  store %struct.av7110* %10, %struct.av7110** %5, align 8
  %11 = load %struct.av7110*, %struct.av7110** %5, align 8
  %12 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @av7110_diseqc_send(%struct.av7110* %11, i32 %14, i32 %17, i32 -1)
  ret i32 %18
}

declare dso_local i32 @av7110_diseqc_send(%struct.av7110*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
