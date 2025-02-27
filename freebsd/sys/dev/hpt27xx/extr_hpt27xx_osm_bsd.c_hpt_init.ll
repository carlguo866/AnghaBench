; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@driver_name_long = common dso_local global i8* null, align 8
@driver_ver = common dso_local global i32 0, align 4
@hpt_final_init = common dso_local global i32 0, align 4
@hpt_ich = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: cannot establish configuration hook\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hpt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @bootverbose, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i8*, i8** @driver_name_long, align 8
  %7 = load i32, i32* @driver_ver, align 4
  %8 = call i32 @os_printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = call i32 (...) @override_kernel_driver()
  %11 = call i32 (...) @init_config()
  %12 = load i32, i32* @hpt_final_init, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hpt_ich, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hpt_ich, i32 0, i32 0), align 8
  %13 = call i64 @config_intrhook_establish(%struct.TYPE_3__* @hpt_ich)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i8*, i8** @driver_name_long, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @os_printk(i8*, i8*, i32) #1

declare dso_local i32 @override_kernel_driver(...) #1

declare dso_local i32 @init_config(...) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
