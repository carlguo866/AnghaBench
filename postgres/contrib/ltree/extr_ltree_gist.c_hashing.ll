; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_gist.c_hashing.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_gist.c_hashing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @hashing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashing(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call %struct.TYPE_8__* @LTREE_FIRST(%struct.TYPE_9__* %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  br label %13

13:                                               ; preds = %16, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ltree_crc32_sz(i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @HASH(i32 %24, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = call %struct.TYPE_8__* @LEVEL_NEXT(%struct.TYPE_8__* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  br label %13

31:                                               ; preds = %13
  ret void
}

declare dso_local %struct.TYPE_8__* @LTREE_FIRST(%struct.TYPE_9__*) #1

declare dso_local i32 @ltree_crc32_sz(i32, i32) #1

declare dso_local i32 @HASH(i32, i32) #1

declare dso_local %struct.TYPE_8__* @LEVEL_NEXT(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
