; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkfront_setup_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkfront_setup_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"discard-granularity\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"discard-alignment\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"discard-secure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkfront_info*)* @blkfront_setup_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkfront_setup_discard(%struct.blkfront_info* %0) #0 {
  %2 = alloca %struct.blkfront_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.blkfront_info* %0, %struct.blkfront_info** %2, align 8
  %6 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %7 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load i32, i32* @XBT_NIL, align 4
  %9 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %10 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @xenbus_gather(i32 %8, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* null)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %20 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %23 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %26 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xenbus_read_unsigned(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %36 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @xenbus_gather(i32, i32, i8*, i8*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
