; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_blistenterhead.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_blistenterhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufhashhdr = type { %struct.buf* }
%struct.buf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.buf**, %struct.buf* }

@.str = private unnamed_addr constant [36 x i8] c"blistenterhead: le_prev is deadbeef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufhashhdr*, %struct.buf*)* @blistenterhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blistenterhead(%struct.bufhashhdr* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.bufhashhdr*, align 8
  %4 = alloca %struct.buf*, align 8
  store %struct.bufhashhdr* %0, %struct.bufhashhdr** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %5 = load %struct.bufhashhdr*, %struct.bufhashhdr** %3, align 8
  %6 = getelementptr inbounds %struct.bufhashhdr, %struct.bufhashhdr* %5, i32 0, i32 0
  %7 = load %struct.buf*, %struct.buf** %6, align 8
  %8 = load %struct.buf*, %struct.buf** %4, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.buf* %7, %struct.buf** %10, align 8
  %11 = icmp ne %struct.buf* %7, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.buf*, %struct.buf** %4, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.bufhashhdr*, %struct.bufhashhdr** %3, align 8
  %17 = getelementptr inbounds %struct.bufhashhdr, %struct.bufhashhdr* %16, i32 0, i32 0
  %18 = load %struct.buf*, %struct.buf** %17, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.buf** %15, %struct.buf*** %20, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.buf*, %struct.buf** %4, align 8
  %23 = load %struct.bufhashhdr*, %struct.bufhashhdr** %3, align 8
  %24 = getelementptr inbounds %struct.bufhashhdr, %struct.bufhashhdr* %23, i32 0, i32 0
  store %struct.buf* %22, %struct.buf** %24, align 8
  %25 = load %struct.bufhashhdr*, %struct.bufhashhdr** %3, align 8
  %26 = getelementptr inbounds %struct.bufhashhdr, %struct.bufhashhdr* %25, i32 0, i32 0
  %27 = load %struct.buf*, %struct.buf** %4, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.buf** %26, %struct.buf*** %29, align 8
  %30 = load %struct.buf*, %struct.buf** %4, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.buf**, %struct.buf*** %32, align 8
  %34 = icmp eq %struct.buf** %33, inttoptr (i64 3735928559 to %struct.buf**)
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %21
  ret void
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
