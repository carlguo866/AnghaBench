; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_ssl_get_prev_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_ssl_get_prev_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i32, %struct.TYPE_23__, %struct.TYPE_24__*, i32, %struct.TYPE_20__*, %struct.TYPE_21__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64, i64, i32, i32, i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }

@TLSEXT_IDX_psk_kex_modes = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@TLSEXT_IDX_psk = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL_GET_PREV_SESSION = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_R_SESSION_ID_CONTEXT_UNINITIALIZED = common dso_local global i32 0, align 4
@SSL_SESS_FLAG_EXTMS = common dso_local global i32 0, align 4
@TLS1_FLAGS_RECEIVED_EXTMS = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_INCONSISTENT_EXTMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_get_prev_session(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %11 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = load i32, i32* @TLSEXT_IDX_psk_kex_modes, align 4
  %19 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tls_parse_extension(%struct.TYPE_25__* %17, i32 %18, i32 %19, i32 %22, i32* null, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %27 = load i32, i32* @TLSEXT_IDX_psk, align 4
  %28 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tls_parse_extension(%struct.TYPE_25__* %26, i32 %27, i32 %28, i32 %31, i32* null, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25, %13
  store i32 -1, i32* %3, align 4
  br label %230

35:                                               ; preds = %25
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %6, align 8
  br label %67

39:                                               ; preds = %2
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = call i32 @tls_get_ticket_from_client(%struct.TYPE_25__* %40, %struct.TYPE_26__* %41, %struct.TYPE_24__** %6)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %66 [
    i32 133, label %44
    i32 132, label %44
    i32 131, label %50
    i32 134, label %50
    i32 130, label %65
    i32 129, label %65
    i32 128, label %65
  ]

44:                                               ; preds = %39, %39
  store i32 1, i32* %7, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %47 = load i32, i32* @SSL_F_SSL_GET_PREV_SESSION, align 4
  %48 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %49 = call i32 @SSLfatal(%struct.TYPE_25__* %45, i32 %46, i32 %47, i32 %48)
  br label %205

50:                                               ; preds = %39, %39
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_24__* @lookup_sess_in_cache(%struct.TYPE_25__* %56, i32 %59, i32 %62)
  store %struct.TYPE_24__* %63, %struct.TYPE_24__** %6, align 8
  br label %64

64:                                               ; preds = %55, %50
  br label %66

65:                                               ; preds = %39, %39, %39
  br label %66

66:                                               ; preds = %39, %65, %64
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = icmp eq %struct.TYPE_24__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %205

71:                                               ; preds = %67
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %205

80:                                               ; preds = %71
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %80
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @memcmp(i32 %91, i32 %94, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88, %80
  br label %205

101:                                              ; preds = %88
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %115 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %116 = load i32, i32* @SSL_F_SSL_GET_PREV_SESSION, align 4
  %117 = load i32, i32* @SSL_R_SESSION_ID_CONTEXT_UNINITIALIZED, align 4
  %118 = call i32 @SSLfatal(%struct.TYPE_25__* %114, i32 %115, i32 %116, i32 %117)
  store i32 1, i32* %7, align 4
  br label %205

119:                                              ; preds = %108, %101
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @time(i32* null)
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  %128 = icmp slt i64 %122, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %119
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = call i32 @tsan_counter(i32* %134)
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = call i32 @SSL_CTX_remove_session(%struct.TYPE_20__* %141, %struct.TYPE_24__* %142)
  br label %144

144:                                              ; preds = %138, %129
  br label %205

145:                                              ; preds = %119
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SSL_SESS_FLAG_EXTMS, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %145
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 7
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @TLS1_FLAGS_RECEIVED_EXTMS, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %152
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %163 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %164 = load i32, i32* @SSL_F_SSL_GET_PREV_SESSION, align 4
  %165 = load i32, i32* @SSL_R_INCONSISTENT_EXTMS, align 4
  %166 = call i32 @SSLfatal(%struct.TYPE_25__* %162, i32 %163, i32 %164, i32 %165)
  store i32 1, i32* %7, align 4
  br label %205

167:                                              ; preds = %152
  br label %179

168:                                              ; preds = %145
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 7
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TLS1_FLAGS_RECEIVED_EXTMS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %205

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178, %167
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %181 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %179
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %185, align 8
  %187 = call i32 @SSL_SESSION_free(%struct.TYPE_24__* %186)
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 4
  store %struct.TYPE_24__* %188, %struct.TYPE_24__** %190, align 8
  br label %191

191:                                              ; preds = %183, %179
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = call i32 @tsan_counter(i32* %196)
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 8
  store i32 1, i32* %3, align 4
  br label %230

205:                                              ; preds = %177, %161, %144, %113, %100, %79, %70, %44
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %207 = icmp ne %struct.TYPE_24__* %206, null
  br i1 %207, label %208, label %225

208:                                              ; preds = %205
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %210 = call i32 @SSL_SESSION_free(%struct.TYPE_24__* %209)
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %212 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %216, align 8
  br label %217

217:                                              ; preds = %214, %208
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %217
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 4
  br label %224

224:                                              ; preds = %220, %217
  br label %225

225:                                              ; preds = %224, %205
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 -1, i32* %3, align 4
  br label %230

229:                                              ; preds = %225
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %229, %228, %191, %34
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_25__*) #1

declare dso_local i32 @tls_parse_extension(%struct.TYPE_25__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @tls_get_ticket_from_client(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_24__**) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_24__* @lookup_sess_in_cache(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @tsan_counter(i32*) #1

declare dso_local i32 @SSL_CTX_remove_session(%struct.TYPE_20__*, %struct.TYPE_24__*) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
