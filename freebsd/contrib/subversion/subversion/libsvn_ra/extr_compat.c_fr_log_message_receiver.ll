; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_fr_log_message_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_fr_log_message_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fr_log_message_baton = type { i32, i32, i32, i32, %struct.rev* }
%struct.rev = type { i32, %struct.rev*, i32, i32 }

@svn_node_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_3__*, i32*)* @fr_log_message_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fr_log_message_receiver(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fr_log_message_baton*, align 8
  %8 = alloca %struct.rev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.fr_log_message_baton*
  store %struct.fr_log_message_baton* %10, %struct.fr_log_message_baton** %7, align 8
  %11 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %12 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.rev* @apr_palloc(i32 %13, i32 24)
  store %struct.rev* %14, %struct.rev** %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rev*, %struct.rev** %8, align 8
  %19 = getelementptr inbounds %struct.rev, %struct.rev* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %21 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rev*, %struct.rev** %8, align 8
  %24 = getelementptr inbounds %struct.rev, %struct.rev* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %26 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %25, i32 0, i32 4
  %27 = load %struct.rev*, %struct.rev** %26, align 8
  %28 = load %struct.rev*, %struct.rev** %8, align 8
  %29 = getelementptr inbounds %struct.rev, %struct.rev* %28, i32 0, i32 1
  store %struct.rev* %27, %struct.rev** %29, align 8
  %30 = load %struct.rev*, %struct.rev** %8, align 8
  %31 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %32 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %31, i32 0, i32 4
  store %struct.rev* %30, %struct.rev** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %37 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @svn_prop_hash_dup(i32 %35, i32 %38)
  %40 = load %struct.rev*, %struct.rev** %8, align 8
  %41 = getelementptr inbounds %struct.rev, %struct.rev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %43 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %42, i32 0, i32 1
  %44 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %45 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %44, i32 0, i32 3
  %46 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %47 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %52 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @svn_node_file, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fr_log_message_baton*, %struct.fr_log_message_baton** %7, align 8
  %59 = getelementptr inbounds %struct.fr_log_message_baton, %struct.fr_log_message_baton* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32* @prev_log_path(i32* %43, i32* %45, i32* %47, i32 %50, i32 %53, i32 %54, i32 %57, i32 %60)
  ret i32* %61
}

declare dso_local %struct.rev* @apr_palloc(i32, i32) #1

declare dso_local i32 @svn_prop_hash_dup(i32, i32) #1

declare dso_local i32* @prev_log_path(i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
