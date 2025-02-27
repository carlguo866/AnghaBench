; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_update_global_rights.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_update_global_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@AUTHZ_ANY_REPOSITORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @update_global_rights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_global_rights(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @update_rights(i32* %9, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @AUTHZ_ANY_REPOSITORY, align 4
  %14 = call i64 @strcmp(i8* %12, i32 %13)
  %15 = icmp eq i64 0, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @update_rights(i32* %18, i32 %19)
  br label %51

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @svn_hash_gets(i32 %24, i8* %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @update_rights(i32* %30, i32 %31)
  br label %50

33:                                               ; preds = %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @apr_hash_pool_get(i32 %36)
  %38 = call i32* @apr_palloc(i32 %37, i32 4)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @init_rights(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @update_rights(i32* %41, i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @svn_hash_sets(i32 %46, i8* %47, i32* %48)
  br label %50

50:                                               ; preds = %33, %29
  br label %51

51:                                               ; preds = %50, %16
  ret void
}

declare dso_local i32 @update_rights(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_hash_gets(i32, i8*) #1

declare dso_local i32* @apr_palloc(i32, i32) #1

declare dso_local i32 @apr_hash_pool_get(i32) #1

declare dso_local i32 @init_rights(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
