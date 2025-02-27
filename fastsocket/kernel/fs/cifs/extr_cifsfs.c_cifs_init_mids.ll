; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_init_mids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_init_mids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"cifs_mpx_ids\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@cifs_mid_cachep = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@cifs_mid_poolp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cifs_init_mids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_init_mids() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %3 = call i32* @kmem_cache_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %2, i32* null)
  store i32* %3, i32** @cifs_mid_cachep, align 8
  %4 = load i32*, i32** @cifs_mid_cachep, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %20

9:                                                ; preds = %0
  %10 = load i32*, i32** @cifs_mid_cachep, align 8
  %11 = call i32* @mempool_create_slab_pool(i32 3, i32* %10)
  store i32* %11, i32** @cifs_mid_poolp, align 8
  %12 = load i32*, i32** @cifs_mid_poolp, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32*, i32** @cifs_mid_cachep, align 8
  %16 = call i32 @kmem_cache_destroy(i32* %15)
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %20

19:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %14, %6
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32* @mempool_create_slab_pool(i32, i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
