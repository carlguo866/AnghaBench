; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_reqsen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_reqsen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"ips_reqsen\00", align 1
@IPS_SCSI_REQSEN_VALID = common dso_local global i32 0, align 4
@IPS_SCSI_REQSEN_CURRENT_ERR = common dso_local global i32 0, align 4
@IPS_SCSI_REQSEN_NO_SENSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @ips_reqsen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_reqsen(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  %7 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 24)
  %8 = load i32, i32* @IPS_SCSI_REQSEN_VALID, align 4
  %9 = load i32, i32* @IPS_SCSI_REQSEN_CURRENT_ERR, align 4
  %10 = or i32 %8, %9
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 10, i32* %12, align 4
  %13 = load i8*, i8** @IPS_SCSI_REQSEN_NO_SENSE, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** @IPS_SCSI_REQSEN_NO_SENSE, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ips_scmd_buf_write(i32 %19, %struct.TYPE_7__* %5, i32 24)
  ret i32 1
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ips_scmd_buf_write(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
