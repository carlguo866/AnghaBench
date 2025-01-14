; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.usb_tranzport* }
%struct.usb_tranzport = type { i32, i32, i64, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @usb_tranzport_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_tranzport_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.usb_tranzport*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.usb_tranzport*, %struct.usb_tranzport** %8, align 8
  store %struct.usb_tranzport* %9, %struct.usb_tranzport** %5, align 8
  %10 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %11 = icmp eq %struct.usb_tranzport* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %17 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %16, i32 0, i32 1
  %18 = call i64 @down_interruptible(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %71

23:                                               ; preds = %15
  %24 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %25 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %67

31:                                               ; preds = %23
  %32 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %33 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %38 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %37, i32 0, i32 1
  %39 = call i32 @up(i32* %38)
  %40 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %41 = call i32 @usb_tranzport_delete(%struct.usb_tranzport* %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %71

44:                                               ; preds = %31
  %45 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %46 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %51 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %54 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @HZ, align 4
  %60 = mul nsw i32 2, %59
  %61 = call i32 @wait_event_interruptible_timeout(i32 %52, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %49, %44
  %63 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %64 = call i32 @usb_tranzport_abort_transfers(%struct.usb_tranzport* %63)
  %65 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %66 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %28
  %68 = load %struct.usb_tranzport*, %struct.usb_tranzport** %5, align 8
  %69 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %68, i32 0, i32 1
  %70 = call i32 @up(i32* %69)
  br label %71

71:                                               ; preds = %67, %36, %20, %12
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @usb_tranzport_delete(%struct.usb_tranzport*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @usb_tranzport_abort_transfers(%struct.usb_tranzport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
