; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistXLogPageReuse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistXLogPageReuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SizeOfGistxlogPageReuse = common dso_local global i32 0, align 4
@RM_GIST_ID = common dso_local global i32 0, align 4
@XLOG_GIST_PAGE_REUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gistXLogPageReuse(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = call i32 (...) @XLogBeginInsert()
  %17 = bitcast %struct.TYPE_4__* %7 to i8*
  %18 = load i32, i32* @SizeOfGistxlogPageReuse, align 4
  %19 = call i32 @XLogRegisterData(i8* %17, i32 %18)
  %20 = load i32, i32* @RM_GIST_ID, align 4
  %21 = load i32, i32* @XLOG_GIST_PAGE_REUSE, align 4
  %22 = call i32 @XLogInsert(i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
