; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_get_safw_phys_attribs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_get_safw_phys_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i32)* @aac_get_safw_phys_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_get_safw_phys_attribs(%struct.aac_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %6 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 9
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
