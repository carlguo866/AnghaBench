; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_copy_emembers.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_copy_emembers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32, i32*)* @ctf_copy_emembers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ctf_copy_emembers(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = call %struct.TYPE_12__* @ctf_list_next(%struct.TYPE_12__* %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  br label %13

13:                                               ; preds = %36, %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strlen(i32 %25)
  %27 = add nsw i64 %26, 1
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @bcopy(%struct.TYPE_10__* %8, i32* %32, i32 8)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %16
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = call %struct.TYPE_12__* @ctf_list_next(%struct.TYPE_12__* %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %7, align 8
  br label %13

39:                                               ; preds = %13
  %40 = load i32*, i32** %6, align 8
  ret i32* %40
}

declare dso_local %struct.TYPE_12__* @ctf_list_next(%struct.TYPE_12__*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
