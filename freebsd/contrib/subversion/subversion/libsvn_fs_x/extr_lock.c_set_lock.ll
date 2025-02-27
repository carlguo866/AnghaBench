; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_lock.c_set_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_lock.c_set_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_4__*, i8*, i32*)* @set_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_lock(i8* %0, %struct.TYPE_4__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @digest_path_from_path(i8** %9, i8* %11, i32 %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @read_digest_file(i32** %10, i32* null, i8* %18, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @write_digest_file(i32* %23, %struct.TYPE_4__* %24, i8* %25, i8* %26, i8* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %31
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @digest_path_from_path(i8**, i8*, i32, i32*) #1

declare dso_local i32 @read_digest_file(i32**, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @write_digest_file(i32*, %struct.TYPE_4__*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
