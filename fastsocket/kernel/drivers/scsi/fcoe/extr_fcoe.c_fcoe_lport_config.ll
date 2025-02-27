; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_lport_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_lport_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@FCP_SPPF_INIT_FCN = common dso_local global i32 0, align 4
@FCP_SPPF_RD_XRDY_DIS = common dso_local global i32 0, align 4
@FCP_SPPF_RETRY = common dso_local global i32 0, align 4
@FCP_SPPF_CONF_COMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*)* @fcoe_lport_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_lport_config(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %3, i32 0, i32 12
  store i64 0, i64* %4, align 8
  %5 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %6 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %5, i32 0, i32 11
  store i64 0, i64* %6, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  store i32 3, i32* %8, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 1
  store i32 3, i32* %10, align 4
  %11 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 2
  store i32 2000, i32* %12, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 3
  store i32 4000, i32* %14, align 4
  %15 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %16 = load i32, i32* @FCP_SPPF_RD_XRDY_DIS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FCP_SPPF_RETRY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FCP_SPPF_CONF_COMPL, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 5
  store i32 1, i32* %25, align 4
  %26 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %27 = call i32 @fc_lport_init_stats(%struct.fc_lport* %26)
  %28 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %29 = call i32 @fc_lport_config(%struct.fc_lport* %28)
  %30 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 10
  store i64 0, i64* %31, align 8
  %32 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 9
  store i64 0, i64* %33, align 8
  %34 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %35 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  ret i32 0
}

declare dso_local i32 @fc_lport_init_stats(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_config(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
