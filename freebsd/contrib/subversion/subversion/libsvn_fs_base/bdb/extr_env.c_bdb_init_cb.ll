; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_env.c_bdb_init_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_env.c_bdb_init_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bdb_cache_pool = common dso_local global i32 0, align 4
@bdb_cache = common dso_local global i32 0, align 4
@bdb_cache_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@clear_cache = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @bdb_init_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bdb_init_cb(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @svn_pool_create(i32* %5)
  store i32 %6, i32* @bdb_cache_pool, align 4
  %7 = load i32, i32* @bdb_cache_pool, align 4
  %8 = call i32 @apr_hash_make(i32 %7)
  store i32 %8, i32* @bdb_cache, align 4
  %9 = load i32, i32* @TRUE, align 4
  %10 = load i32, i32* @bdb_cache_pool, align 4
  %11 = call i32 @svn_mutex__init(i32* @bdb_cache_lock, i32 %9, i32 %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load i32, i32* @bdb_cache_pool, align 4
  %14 = load i32, i32* @clear_cache, align 4
  %15 = load i32, i32* @apr_pool_cleanup_null, align 4
  %16 = call i32 @apr_pool_cleanup_register(i32 %13, i32* null, i32 %14, i32 %15)
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %17
}

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i32 @apr_hash_make(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mutex__init(i32*, i32, i32) #1

declare dso_local i32 @apr_pool_cleanup_register(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
