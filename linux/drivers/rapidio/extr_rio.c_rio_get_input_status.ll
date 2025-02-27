; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_get_input_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_get_input_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32 }

@RIO_MNT_REQ_CMD_IS = common dso_local global i32 0, align 4
@RIO_PORT_N_MNT_RSP_RVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_dev*, i32, i32*)* @rio_get_input_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_get_input_status(%struct.rio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rio_dev* %0, %struct.rio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %14 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @RIO_DEV_PORT_N_MNT_RSP_CSR(%struct.rio_dev* %14, i32 %15)
  %17 = call i32 @rio_read_config_32(%struct.rio_dev* %13, i32 %16, i32* %8)
  %18 = call i32 @udelay(i32 50)
  br label %19

19:                                               ; preds = %12, %3
  %20 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %21 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @RIO_DEV_PORT_N_MNT_REQ_CSR(%struct.rio_dev* %21, i32 %22)
  %24 = load i32, i32* @RIO_MNT_REQ_CMD_IS, align 4
  %25 = call i32 @rio_write_config_32(%struct.rio_dev* %20, i32 %23, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %52

29:                                               ; preds = %19
  store i32 3, i32* %9, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = call i32 @udelay(i32 50)
  %36 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %37 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @RIO_DEV_PORT_N_MNT_RSP_CSR(%struct.rio_dev* %37, i32 %38)
  %40 = call i32 @rio_read_config_32(%struct.rio_dev* %36, i32 %39, i32* %8)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @RIO_PORT_N_MNT_RSP_RVAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %52

48:                                               ; preds = %34
  br label %30

49:                                               ; preds = %30
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %45, %28
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @rio_read_config_32(%struct.rio_dev*, i32, i32*) #1

declare dso_local i32 @RIO_DEV_PORT_N_MNT_RSP_CSR(%struct.rio_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rio_write_config_32(%struct.rio_dev*, i32, i32) #1

declare dso_local i32 @RIO_DEV_PORT_N_MNT_REQ_CSR(%struct.rio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
