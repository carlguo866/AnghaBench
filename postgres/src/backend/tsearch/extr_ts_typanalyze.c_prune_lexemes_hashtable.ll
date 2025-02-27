; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_typanalyze.c_prune_lexemes_hashtable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_typanalyze.c_prune_lexemes_hashtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@HASH_REMOVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hash table corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @prune_lexemes_hashtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_lexemes_hashtable(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @hash_seq_init(i32* %5, i32* %8)
  br label %10

10:                                               ; preds = %42, %2
  %11 = call i64 @hash_seq_search(i32* %5)
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = bitcast %struct.TYPE_3__* %31 to i8*
  %33 = load i32, i32* @HASH_REMOVE, align 4
  %34 = call i32* @hash_search(i32* %29, i8* %32, i32 %33, i32* null)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %24
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @pfree(i8* %40)
  br label %42

42:                                               ; preds = %39, %14
  br label %10

43:                                               ; preds = %10
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32* @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
