; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_proplist_item_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_proplist_item_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @svn_client_proplist_item_dup(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call %struct.TYPE_5__* @apr_pcalloc(i32* %6, i32 16)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @svn_stringbuf_dup(i64 %15, i32* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @string_hash_dup(i64 %28, i32* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %34
}

declare dso_local %struct.TYPE_5__* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @svn_stringbuf_dup(i64, i32*) #1

declare dso_local i64 @string_hash_dup(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
