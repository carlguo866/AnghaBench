; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppi.c_ppi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppi.c_ppi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppi_data = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.ppi_data* }

@.str = private unnamed_addr constant [4 x i8] c"ppi\00", align 1
@ppi_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ppi%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to create character device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ppiintr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppi_data*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ppi_data* @DEVTOSOFTC(i32 %5)
  store %struct.ppi_data* %6, %struct.ppi_data** %4, align 8
  %7 = load %struct.ppi_data*, %struct.ppi_data** %4, align 8
  %8 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %7, i32 0, i32 2
  %9 = call i32 @sx_init(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = load i32, i32* @UID_ROOT, align 4
  %13 = load i32, i32* @GID_WHEEL, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_unit(i32 %14)
  %16 = call %struct.TYPE_2__* @make_dev(i32* @ppi_cdevsw, i32 %11, i32 %12, i32 %13, i32 384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.ppi_data*, %struct.ppi_data** %4, align 8
  %18 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %17, i32 0, i32 1
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.ppi_data*, %struct.ppi_data** %4, align 8
  %20 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.ppi_data*, %struct.ppi_data** %4, align 8
  %29 = load %struct.ppi_data*, %struct.ppi_data** %4, align 8
  %30 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.ppi_data* %28, %struct.ppi_data** %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.ppi_data*, %struct.ppi_data** %4, align 8
  %35 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ppi_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
