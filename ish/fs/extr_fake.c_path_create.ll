; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_path_create.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_path_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ish_stat = type { i32 }

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @path_create(%struct.mount* %0, i8* %1, %struct.ish_stat* %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ish_stat*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ish_stat* %2, %struct.ish_stat** %6, align 8
  %7 = load %struct.mount*, %struct.mount** %4, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ish_stat*, %struct.ish_stat** %6, align 8
  %12 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %13 = call i32 @sqlite3_bind_blob(i32 %10, i32 1, %struct.ish_stat* %11, i32 4, i32 %12)
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = load %struct.mount*, %struct.mount** %4, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @db_exec_reset(%struct.mount* %14, i32 %18)
  %20 = load %struct.mount*, %struct.mount** %4, align 8
  %21 = getelementptr inbounds %struct.mount, %struct.mount* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @bind_path(i32 %23, i32 1, i8* %24)
  %26 = load %struct.mount*, %struct.mount** %4, align 8
  %27 = load %struct.mount*, %struct.mount** %4, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @db_exec_reset(%struct.mount* %26, i32 %30)
  ret void
}

declare dso_local i32 @sqlite3_bind_blob(i32, i32, %struct.ish_stat*, i32, i32) #1

declare dso_local i32 @db_exec_reset(%struct.mount*, i32) #1

declare dso_local i32 @bind_path(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
