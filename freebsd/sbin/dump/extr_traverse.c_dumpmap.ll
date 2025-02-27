; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_dumpmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_dumpmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@spcl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@mapsize = common dso_local global i32 0, align 4
@TP_BSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dumpmap(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 0), align 4
  %10 = load i32, i32* @mapsize, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @TP_BSIZE, align 4
  %15 = call i32 @howmany(i32 %13, i32 %14)
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 1), align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @writeheader(i32 %16)
  store i32 0, i32* %7, align 4
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %26, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 1), align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @writerec(i8* %24, i32 0)
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @TP_BSIZE, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %8, align 8
  br label %19

33:                                               ; preds = %19
  ret void
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @writeheader(i32) #1

declare dso_local i32 @writerec(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
