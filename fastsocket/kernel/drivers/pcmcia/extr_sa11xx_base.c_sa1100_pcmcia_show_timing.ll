; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa11xx_base.c_sa1100_pcmcia_show_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa11xx_base.c_sa1100_pcmcia_show_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.soc_pcmcia_timing = type { i32, i32, i32 }

@MECR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"I/O      : %u (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"attribute: %u (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"common   : %u (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*, i8*)* @sa1100_pcmcia_show_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_pcmcia_show_timing(%struct.soc_pcmcia_socket* %0, i8* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.soc_pcmcia_timing, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 @cpufreq_get(i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @MECR, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %8, align 8
  %12 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %13 = call i32 @soc_common_pcmcia_get_timing(%struct.soc_pcmcia_socket* %12, %struct.soc_pcmcia_timing* %5)
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %20 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MECR_BSIO_GET(i64 %18, i32 %21)
  %23 = call i32 @sa1100_pcmcia_cmd_time(i32 %17, i32 %22)
  %24 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %34 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MECR_BSA_GET(i64 %32, i32 %35)
  %37 = call i32 @sa1100_pcmcia_cmd_time(i32 %31, i32 %36)
  %38 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %48 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MECR_BSM_GET(i64 %46, i32 %49)
  %51 = call i32 @sa1100_pcmcia_cmd_time(i32 %45, i32 %50)
  %52 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %51)
  %53 = load i8*, i8** %8, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local i32 @cpufreq_get(i32) #1

declare dso_local i32 @soc_common_pcmcia_get_timing(%struct.soc_pcmcia_socket*, %struct.soc_pcmcia_timing*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @sa1100_pcmcia_cmd_time(i32, i32) #1

declare dso_local i32 @MECR_BSIO_GET(i64, i32) #1

declare dso_local i32 @MECR_BSA_GET(i64, i32) #1

declare dso_local i32 @MECR_BSM_GET(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
