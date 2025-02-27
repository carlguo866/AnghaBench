; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@acpi_ec_event_handler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_ec* ()* @acpi_ec_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_ec* @acpi_ec_alloc() #0 {
  %1 = alloca %struct.acpi_ec*, align 8
  %2 = alloca %struct.acpi_ec*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.acpi_ec* @kzalloc(i32 40, i32 %3)
  store %struct.acpi_ec* %4, %struct.acpi_ec** %2, align 8
  %5 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %6 = icmp ne %struct.acpi_ec* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.acpi_ec* null, %struct.acpi_ec** %1, align 8
  br label %33

8:                                                ; preds = %0
  %9 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %9, i32 0, i32 7
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %12, i32 0, i32 6
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %15, i32 0, i32 5
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %18, i32 0, i32 4
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %21, i32 0, i32 3
  %23 = load i32, i32* @acpi_ec_event_handler, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %27 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %29 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %31 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  store %struct.acpi_ec* %32, %struct.acpi_ec** %1, align 8
  br label %33

33:                                               ; preds = %8, %7
  %34 = load %struct.acpi_ec*, %struct.acpi_ec** %1, align 8
  ret %struct.acpi_ec* %34
}

declare dso_local %struct.acpi_ec* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
