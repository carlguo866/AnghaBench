; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_set_lna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_set_lna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.drx39xxj_state*, %struct.dtv_frontend_properties }
%struct.drx39xxj_state = type { %struct.drx_demod_instance* }
%struct.drx_demod_instance = type { %struct.drxj_data* }
%struct.drxj_data = type { i32 }
%struct.dtv_frontend_properties = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"LNA is not supported on this device!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @drx39xxj_set_lna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drx39xxj_set_lna(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.drx39xxj_state*, align 8
  %6 = alloca %struct.drx_demod_instance*, align 8
  %7 = alloca %struct.drxj_data*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %11, align 8
  store %struct.drx39xxj_state* %12, %struct.drx39xxj_state** %5, align 8
  %13 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %5, align 8
  %14 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %13, i32 0, i32 0
  %15 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %14, align 8
  store %struct.drx_demod_instance* %15, %struct.drx_demod_instance** %6, align 8
  %16 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %17 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %16, i32 0, i32 0
  %18 = load %struct.drxj_data*, %struct.drxj_data** %17, align 8
  store %struct.drxj_data* %18, %struct.drxj_data** %7, align 8
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %25 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @drxj_set_lna_state(%struct.drx_demod_instance* %34, i64 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @drxj_set_lna_state(%struct.drx_demod_instance*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
