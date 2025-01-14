; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_name_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_name_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_dev = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_name_dev(%struct.ffs_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.ffs_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ffs_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ffs_dev* %0, %struct.ffs_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @ffs_dev_lock()
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.ffs_dev* @_ffs_do_find_dev(i8* %8)
  store %struct.ffs_dev* %9, %struct.ffs_dev** %5, align 8
  %10 = load %struct.ffs_dev*, %struct.ffs_dev** %5, align 8
  %11 = icmp ne %struct.ffs_dev* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %14 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @strlcpy(i32 %15, i8* %16, i32 %20)
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.ffs_dev*, %struct.ffs_dev** %5, align 8
  %24 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %25 = icmp ne %struct.ffs_dev* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %12
  %31 = call i32 (...) @ffs_dev_unlock()
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @ffs_dev_lock(...) #1

declare dso_local %struct.ffs_dev* @_ffs_do_find_dev(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ffs_dev_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
