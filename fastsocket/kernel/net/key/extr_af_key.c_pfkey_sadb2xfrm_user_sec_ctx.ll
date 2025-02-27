; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_sadb2xfrm_user_sec_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_sadb2xfrm_user_sec_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_user_sec_ctx = type { i32, i32, i32, i32, i32 }
%struct.sadb_x_sec_ctx = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_user_sec_ctx* (%struct.sadb_x_sec_ctx*)* @pfkey_sadb2xfrm_user_sec_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx* %0) #0 {
  %2 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %3 = alloca %struct.sadb_x_sec_ctx*, align 8
  %4 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.sadb_x_sec_ctx* %0, %struct.sadb_x_sec_ctx** %3, align 8
  store %struct.xfrm_user_sec_ctx* null, %struct.xfrm_user_sec_ctx** %4, align 8
  %6 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 20, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.xfrm_user_sec_ctx* @kmalloc(i32 %12, i32 %13)
  store %struct.xfrm_user_sec_ctx* %14, %struct.xfrm_user_sec_ctx** %4, align 8
  %15 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %16 = icmp ne %struct.xfrm_user_sec_ctx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.xfrm_user_sec_ctx* null, %struct.xfrm_user_sec_ctx** %2, align 8
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %3, align 8
  %20 = call i32 @pfkey_sec_ctx_len(%struct.sadb_x_sec_ctx* %19)
  %21 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %43, i64 1
  %45 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %45, i64 1
  %47 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(%struct.xfrm_user_sec_ctx* %44, %struct.sadb_x_sec_ctx* %46, i32 %49)
  %51 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  store %struct.xfrm_user_sec_ctx* %51, %struct.xfrm_user_sec_ctx** %2, align 8
  br label %52

52:                                               ; preds = %18, %17
  %53 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %2, align 8
  ret %struct.xfrm_user_sec_ctx* %53
}

declare dso_local %struct.xfrm_user_sec_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @pfkey_sec_ctx_len(%struct.sadb_x_sec_ctx*) #1

declare dso_local i32 @memcpy(%struct.xfrm_user_sec_ctx*, %struct.sadb_x_sec_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
