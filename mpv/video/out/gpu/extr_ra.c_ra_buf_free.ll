; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_buf_free.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ra*, %struct.ra_buf*)* }
%struct.ra_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_buf_free(%struct.ra* %0, %struct.ra_buf** %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_buf**, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_buf** %1, %struct.ra_buf*** %4, align 8
  %5 = load %struct.ra_buf**, %struct.ra_buf*** %4, align 8
  %6 = load %struct.ra_buf*, %struct.ra_buf** %5, align 8
  %7 = icmp ne %struct.ra_buf* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.ra*, %struct.ra** %3, align 8
  %10 = getelementptr inbounds %struct.ra, %struct.ra* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ra*, %struct.ra_buf*)*, i32 (%struct.ra*, %struct.ra_buf*)** %12, align 8
  %14 = load %struct.ra*, %struct.ra** %3, align 8
  %15 = load %struct.ra_buf**, %struct.ra_buf*** %4, align 8
  %16 = load %struct.ra_buf*, %struct.ra_buf** %15, align 8
  %17 = call i32 %13(%struct.ra* %14, %struct.ra_buf* %16)
  br label %18

18:                                               ; preds = %8, %2
  %19 = load %struct.ra_buf**, %struct.ra_buf*** %4, align 8
  store %struct.ra_buf* null, %struct.ra_buf** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
