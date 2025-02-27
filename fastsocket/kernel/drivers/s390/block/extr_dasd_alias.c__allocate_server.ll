; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__allocate_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__allocate_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_server = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dasd_uid = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alias_server* (%struct.dasd_uid*)* @_allocate_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alias_server* @_allocate_server(%struct.dasd_uid* %0) #0 {
  %2 = alloca %struct.alias_server*, align 8
  %3 = alloca %struct.dasd_uid*, align 8
  %4 = alloca %struct.alias_server*, align 8
  store %struct.dasd_uid* %0, %struct.dasd_uid** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.alias_server* @kzalloc(i32 16, i32 %5)
  store %struct.alias_server* %6, %struct.alias_server** %4, align 8
  %7 = load %struct.alias_server*, %struct.alias_server** %4, align 8
  %8 = icmp ne %struct.alias_server* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.alias_server* @ERR_PTR(i32 %11)
  store %struct.alias_server* %12, %struct.alias_server** %2, align 8
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.alias_server*, %struct.alias_server** %4, align 8
  %15 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dasd_uid*, %struct.dasd_uid** %3, align 8
  %19 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(i32 %17, i32 %20, i32 4)
  %22 = load %struct.alias_server*, %struct.alias_server** %4, align 8
  %23 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dasd_uid*, %struct.dasd_uid** %3, align 8
  %27 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i32 %25, i32 %28, i32 4)
  %30 = load %struct.alias_server*, %struct.alias_server** %4, align 8
  %31 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %30, i32 0, i32 1
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.alias_server*, %struct.alias_server** %4, align 8
  %34 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %33, i32 0, i32 0
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.alias_server*, %struct.alias_server** %4, align 8
  store %struct.alias_server* %36, %struct.alias_server** %2, align 8
  br label %37

37:                                               ; preds = %13, %9
  %38 = load %struct.alias_server*, %struct.alias_server** %2, align 8
  ret %struct.alias_server* %38
}

declare dso_local %struct.alias_server* @kzalloc(i32, i32) #1

declare dso_local %struct.alias_server* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
