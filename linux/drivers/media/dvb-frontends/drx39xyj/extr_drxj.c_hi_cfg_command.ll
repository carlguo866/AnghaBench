; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_hi_cfg_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_hi_cfg_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i32, i64 }
%struct.drxj_data = type { i32, i32, i32, i32, i32 }
%struct.drxj_hi_cmd = type { i32, i32, i32, i32, i32, i32, i32 }

@SIO_HI_RA_RAM_CMD_CONFIG = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_1_PAR1_SEC_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@SIO_HI_RA_RAM_PAR_5_CFG_SLEEP_ZZZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @hi_cfg_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi_cfg_command(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.drxj_data*, align 8
  %5 = alloca %struct.drxj_hi_cmd, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %9 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.drxj_data*
  store %struct.drxj_data* %11, %struct.drxj_data** %4, align 8
  %12 = load i32, i32* @SIO_HI_RA_RAM_CMD_CONFIG, align 4
  %13 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %5, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @SIO_HI_RA_RAM_PAR_1_PAR1_SEC_KEY, align 4
  %15 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %5, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %17 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %5, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %21 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %5, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %25 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %29 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %33 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %37 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @hi_command(i32 %38, %struct.drxj_hi_cmd* %5, i32* %6)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %52

45:                                               ; preds = %1
  %46 = load i32, i32* @SIO_HI_RA_RAM_PAR_5_CFG_SLEEP_ZZZ, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %49 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  store i32 0, i32* %2, align 4
  br label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @hi_command(i32, %struct.drxj_hi_cmd*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
