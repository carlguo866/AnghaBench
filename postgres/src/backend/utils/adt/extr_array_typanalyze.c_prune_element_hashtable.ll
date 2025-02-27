; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_typanalyze.c_prune_element_hashtable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_typanalyze.c_prune_element_hashtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@HASH_REMOVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hash table corrupted\00", align 1
@array_extra_data = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @prune_element_hashtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_element_hashtable(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @hash_seq_init(i32* %5, i32* %8)
  br label %10

10:                                               ; preds = %48, %2
  %11 = call i64 @hash_seq_search(i32* %5)
  %12 = inttoptr i64 %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %6, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* @HASH_REMOVE, align 4
  %33 = call i32* @hash_search(i32* %28, i8* %31, i32 %32, i32* null)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @array_extra_data, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @DatumGetPointer(i32 %44)
  %46 = call i32 @pfree(i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %14
  br label %10

49:                                               ; preds = %10
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32* @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
