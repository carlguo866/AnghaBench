; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/librefuse/extr_t_refuse_opt.c_foo_opt_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/librefuse/extr_t_refuse_opt.c_foo_opt_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_args = type { i32 }
%struct.foofs_config = type { i32* }

@FUSE_OPT_KEY_NONOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.fuse_args*)* @foo_opt_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foo_opt_proc(i8* %0, i8* %1, i32 %2, %struct.fuse_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_args*, align 8
  %10 = alloca %struct.foofs_config*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fuse_args* %3, %struct.fuse_args** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.foofs_config*
  store %struct.foofs_config* %12, %struct.foofs_config** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @FUSE_OPT_KEY_NONOPT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.foofs_config*, %struct.foofs_config** %10, align 8
  %18 = getelementptr inbounds %struct.foofs_config, %struct.foofs_config* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = call i32* @strdup(i8* %22)
  %24 = load %struct.foofs_config*, %struct.foofs_config** %10, align 8
  %25 = getelementptr inbounds %struct.foofs_config, %struct.foofs_config* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  store i32 0, i32* %5, align 4
  br label %27

26:                                               ; preds = %16, %4
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
