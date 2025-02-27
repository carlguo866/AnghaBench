; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_handler = type { i32, i32 }

@iucv_available = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@iucv_register_mutex = common dso_local global i32 0, align 4
@iucv_nonsmp_handler = common dso_local global i32 0, align 4
@iucv_handler_list = common dso_local global i32 0, align 4
@iucv_table_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_register(%struct.iucv_handler* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iucv_handler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iucv_handler* %0, %struct.iucv_handler** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @iucv_available, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOSYS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = call i32 @mutex_lock(i32* @iucv_register_mutex)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @iucv_nonsmp_handler, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @iucv_nonsmp_handler, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = call i64 @list_empty(i32* @iucv_handler_list)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = call i32 (...) @iucv_enable()
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %46

27:                                               ; preds = %22
  br label %37

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @iucv_nonsmp_handler, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @iucv_setmask_up()
  br label %36

36:                                               ; preds = %34, %31, %28
  br label %37

37:                                               ; preds = %36, %27
  %38 = load %struct.iucv_handler*, %struct.iucv_handler** %4, align 8
  %39 = getelementptr inbounds %struct.iucv_handler, %struct.iucv_handler* %38, i32 0, i32 1
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = call i32 @spin_lock_bh(i32* @iucv_table_lock)
  %42 = load %struct.iucv_handler*, %struct.iucv_handler** %4, align 8
  %43 = getelementptr inbounds %struct.iucv_handler, %struct.iucv_handler* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %43, i32* @iucv_handler_list)
  %45 = call i32 @spin_unlock_bh(i32* @iucv_table_lock)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %37, %26
  %47 = call i32 @mutex_unlock(i32* @iucv_register_mutex)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @iucv_enable(...) #1

declare dso_local i32 @iucv_setmask_up(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
