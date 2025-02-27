; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_route_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_route_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_GLOBAL_TABLE = common dso_local global i64 0, align 8
@LOCAL_RTE_CONF_DESTID_SEL = common dso_local global i32 0, align 4
@RIO_STD_RTE_CONF_DESTID_SEL_CSR = common dso_local global i32 0, align 4
@RIO_STD_RTE_CONF_PORT_SEL_CSR = common dso_local global i32 0, align 4
@IDT_DEFAULT_ROUTE = common dso_local global i64 0, align 8
@IDT_NO_ROUTE = common dso_local global i64 0, align 8
@RIO_INVALID_ROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i64, i64, i64, i64, i64*)* @idtg2_route_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtg2_route_get_entry(%struct.rio_mport* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @RIO_GLOBAL_TABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i64 0, i64* %10, align 8
  br label %21

18:                                               ; preds = %6
  %19 = load i64, i64* %10, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %18, %17
  %22 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* @LOCAL_RTE_CONF_DESTID_SEL, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %22, i64 %23, i64 %24, i32 %25, i64 %26)
  %28 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* @RIO_STD_RTE_CONF_DESTID_SEL_CSR, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %28, i64 %29, i64 %30, i32 %31, i64 %32)
  %34 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @RIO_STD_RTE_CONF_PORT_SEL_CSR, align 4
  %38 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %34, i64 %35, i64 %36, i32 %37, i64* %13)
  %39 = load i64, i64* @IDT_DEFAULT_ROUTE, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %21
  %43 = load i64, i64* @IDT_NO_ROUTE, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %21
  %47 = load i64, i64* @RIO_INVALID_ROUTE, align 8
  %48 = load i64*, i64** %12, align 8
  store i64 %47, i64* %48, align 8
  br label %52

49:                                               ; preds = %42
  %50 = load i64, i64* %13, align 8
  %51 = load i64*, i64** %12, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  ret i32 0
}

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i64, i64, i32, i64) #1

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i64, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
