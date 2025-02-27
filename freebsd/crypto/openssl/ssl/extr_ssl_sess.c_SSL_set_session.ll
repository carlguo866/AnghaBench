; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_SSL_set_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_SSL_set_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_set_session(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %7 = call i32 @ssl_clear_bad_session(%struct.TYPE_12__* %6)
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @SSL_set_ssl_method(%struct.TYPE_12__* %18, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = call i32 @SSL_SESSION_up_ref(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %31, %28
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i32 @SSL_SESSION_free(%struct.TYPE_11__* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %46, align 8
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ssl_clear_bad_session(%struct.TYPE_12__*) #1

declare dso_local i32 @SSL_set_ssl_method(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @SSL_SESSION_up_ref(%struct.TYPE_11__*) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
