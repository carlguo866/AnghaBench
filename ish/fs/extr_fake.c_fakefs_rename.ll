; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_rename.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mount*, i8*, i8*)* }
%struct.mount = type { i32 }

@realfs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, i8*)* @fakefs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_rename(%struct.mount* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.mount*, %struct.mount** %5, align 8
  %10 = call i32 @db_begin(%struct.mount* %9)
  %11 = load %struct.mount*, %struct.mount** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @path_rename(%struct.mount* %11, i8* %12, i8* %13)
  %15 = load i32 (%struct.mount*, i8*, i8*)*, i32 (%struct.mount*, i8*, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @realfs, i32 0, i32 0), align 8
  %16 = load %struct.mount*, %struct.mount** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 %15(%struct.mount* %16, i8* %17, i8* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.mount*, %struct.mount** %5, align 8
  %24 = call i32 @db_rollback(%struct.mount* %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.mount*, %struct.mount** %5, align 8
  %28 = call i32 @db_commit(%struct.mount* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i32 @path_rename(%struct.mount*, i8*, i8*) #1

declare dso_local i32 @db_rollback(%struct.mount*) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
