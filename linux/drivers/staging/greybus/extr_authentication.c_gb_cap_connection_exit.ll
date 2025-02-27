; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_gb_cap_connection_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_gb_cap_connection_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_cap = type { i32, i32, i32, i32, i32, i32 }

@cap_class = common dso_local global i32 0, align 4
@cap_minors_map = common dso_local global i32 0, align 4
@list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_cap_connection_exit(%struct.gb_connection* %0) #0 {
  %2 = alloca %struct.gb_connection*, align 8
  %3 = alloca %struct.gb_cap*, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %2, align 8
  %4 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %5 = icmp ne %struct.gb_connection* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %42

7:                                                ; preds = %1
  %8 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %9 = call %struct.gb_cap* @gb_connection_get_data(%struct.gb_connection* %8)
  store %struct.gb_cap* %9, %struct.gb_cap** %3, align 8
  %10 = load i32, i32* @cap_class, align 4
  %11 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %12 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_destroy(i32 %10, i32 %13)
  %15 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %16 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %15, i32 0, i32 5
  %17 = call i32 @cdev_del(i32* %16)
  %18 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %19 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MINOR(i32 %20)
  %22 = call i32 @ida_simple_remove(i32* @cap_minors_map, i32 %21)
  %23 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %24 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %23, i32 0, i32 3
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %27 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %29 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %28, i32 0, i32 3
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %32 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gb_connection_disable(i32 %33)
  %35 = call i32 @mutex_lock(i32* @list_mutex)
  %36 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %37 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %36, i32 0, i32 1
  %38 = call i32 @list_del(i32* %37)
  %39 = call i32 @mutex_unlock(i32* @list_mutex)
  %40 = load %struct.gb_cap*, %struct.gb_cap** %3, align 8
  %41 = call i32 @put_cap(%struct.gb_cap* %40)
  br label %42

42:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.gb_cap* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gb_connection_disable(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_cap(%struct.gb_cap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
