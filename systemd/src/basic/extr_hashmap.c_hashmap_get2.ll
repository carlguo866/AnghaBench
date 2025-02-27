; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_get2.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_get2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plain_hashmap_entry = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IDX_NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hashmap_get2(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.plain_hashmap_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %43

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @bucket_hash(i32* %15, i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @bucket_scan(i32* %18, i32 %19, i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @IDX_NIL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %43

26:                                               ; preds = %14
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.plain_hashmap_entry* @plain_bucket_at(i32* %27, i32 %28)
  store %struct.plain_hashmap_entry* %29, %struct.plain_hashmap_entry** %8, align 8
  %30 = load i8**, i8*** %7, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %8, align 8
  %34 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %8, align 8
  %41 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %39, %25, %13
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i32 @bucket_hash(i32*, i8*) #1

declare dso_local i32 @bucket_scan(i32*, i32, i8*) #1

declare dso_local %struct.plain_hashmap_entry* @plain_bucket_at(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
